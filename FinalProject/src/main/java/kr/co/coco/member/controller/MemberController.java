package kr.co.coco.member.controller;

import java.util.Objects;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.coco.member.model.Service.MemberServiceImpl;
import kr.co.coco.member.model.dto.MemberDTO;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberServiceImpl memberService;
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
//	회원가입 Form 이동
	@GetMapping("/registerForm.do")
	public String registerForm() {
		return "member/register";
	}
//	회원가입
	@PostMapping("/register.do")
	public String register(MemberDTO member, HttpSession session, Model model, String number) {
		
		if(member.getPwd().equals(member.getPwdAgain())) {
			String password = bcryptPasswordEncoder.encode(member.getPwd());
			member.setPwd(password);
			int result = memberService.registerMember(member);
			if(result == 1) {
				return "redirect:/member/loginForm.do";
			}else {
				return "common/error";
			}
		}else {
			return "common/error";
		}
	}
//	id중복체크
	@GetMapping("/idCheck.do")
	@ResponseBody
	public String idCheck(String idInput) {
		String result = memberService.idCheck(idInput);
		return result;
	}
	
//	nickname중복체크
	@GetMapping(value = "/nicknameCheck.do", produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String nicknameCheck(String nicknameInput) {
		String result = memberService.nicknameCheck(nicknameInput);
		return result;
	}
	
//	로그인 Form 이동
	@GetMapping("/loginForm.do")
	public String loginForm() {
		return "member/login";
	}
	
// 로그인
	@PostMapping("/login.do")
	public String loginMember(MemberDTO member, HttpSession session, Model model) {
		MemberDTO login = memberService.login(member);
		
		if(!Objects.isNull(login) && bcryptPasswordEncoder.matches(member.getPwd(), login.getPwd())) {
			session.setAttribute("no", login.getNo());
			session.setAttribute("id", login.getId());
			session.setAttribute("name", login.getName());
			session.setAttribute("type", login.getType());
			session.setAttribute("nickname", login.getNickname());
			
			System.out.println("로그인 성공");
			int loginDateUpdate = memberService.loginDateUpdate(login.getNo());
			return "redirect:/member/mainForm.do";
		}else {
			System.out.println("로그인 실패");
			return "member/login";
		}
	}
	// mainForm 이동
	@GetMapping("/mainForm.do")
	public String mainPage() {
		return "main";
	}
	// 로그아웃
	@GetMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/member/mainForm.do";
	}
	
	
	
	
}

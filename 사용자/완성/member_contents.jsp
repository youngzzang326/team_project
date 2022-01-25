<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %> 
<%@ page import="com.study.springboot.dto.MemberDto" %>

<c:import url="header.jsp" />
<link rel="stylesheet" href="/css/admin/member_contents.css">

			<div class="member_list">
                <div class="sub_box">
                    <div class="sub_name"><h2>회원정보</h2></div>
                </div>
                <form action="member_list" method="post">
                    <table class="member_info">
                        <tr class="tr_header">
                            <th>회원번호</th>
                            <td>${memberDto.member_idx  }</td>
                        </tr>
                        <tr class="tr_header">
                            <th>아이디</th>
                            <td>${memberDto.member_id  }</td>
                        </tr>
                        <tr class="tr_header">
                            <th>비밀번호</th>
                            <td><input type="text" value="${ memberDto.member_pw }"></td>
                        </tr>
                        <tr class="tr_header">
                            <th>이름</th>
                            <td><input type="text" value="${ memberDto.member_name }"></td>
                        </tr>
                        <tr class="tr_header">
                            <th>이메일</th>
                            <td><input type="text" value="${ memberDto.member_email }"></td>
                        </tr>
                        <tr class="tr_header">
                            <th>휴대폰번호</th>
                            <td><input type="text" value="${ memberDto.member_phone }"></td>
                        </tr>
                        <tr class="tr_header">
                            <th>주소</th>
                            <td><input type="text" value="${ memberDto.member_address }"></td>
                        </tr>
                        <tr class="tr_header">
                            <th>성별</th>
                            <td>${ memberDto.member_gender }</td>
                        </tr>
                        <tr class="tr_header">
                            <th>생일</th>
                            <td>${ memberDto.member_birthdate }</td>
                        </tr>
                        <tr class="tr_header">
                            <th>가입일</th>
                            <td>${ memberDto.member_joindate }</td>
                        </tr>
                    </table>
                </form>
                <div class="back_sec">
                    <a href="updateMember?member_idx=${memberDto.member_idx}"><button class="back_btn" value="수정">수정</button></a>
                    <a href="member_list"><button class="back_btn" value="목록">목록</button></a>
                </div>
            </div>
    </body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %> 
<%@ page import="com.study.springboot.dto.NoticeDto" %>

<c:import url="header.jsp" />
<link rel="stylesheet" href="/css/admin/notice_contents.css">
   
        <div class="content">
            <div class="sub_box">
                <div class="sub_name"><h2>주문내역</h2></div>
            </div>
            <form action="noticeContents" method="post">
            <input type="hidden" name="id" value="${noticeDto.notice_idx}">
            <table class="notice_edit">
                <tr>
                    <td class="notice_table">제목</td>
                    <td>
                        <input type="text"  class="title_inp"value="${ noticeDto.notice_title}">
                    </td>
                </tr>
                <tr>
                    <td class="notice_table">이미지 선택</td>
                    <td>
                        <button class="select_btn">파일선택</button>
                        <span>선택된 파일 없음</span>
                        
                    </td>
                </tr>
                <tr>
                    <td class="notice_table">상세내용</td>
                    <td>
                    	<textarea id="notice_contents" cols="100" rows="20">
                    		<c:out value="${noticeDto.notice_conctent}" />
                    	</textarea>
                   	</td>
                </tr>
            </table>
            </form>
            
            <div class="notice_button">
                <a href="updateNotice?notice_idx=${noticeDto.notice_idx}"><button value="수정" class="write_btn">수정</button></a>
                <a href="deleteNotice?notice_idx=${noticeDto.notice_idx}"><button value="삭제" class="write_btn">삭제</button></a>
                <a href="notice_list"><button value="목록" class="write_btn" style="background-color: #f8e4e4; color:#484848;" >목록</button></a>
            </div>
        </div>
    </div>
</body>
</html>
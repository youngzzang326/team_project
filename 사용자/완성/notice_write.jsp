
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %> 

<link rel="stylesheet" href="/css/admin/notice_contents.css">
<c:import url="header.jsp" />
   
        <div class="content">
            <div class="sub_box">
                <div class="sub_name"><h2>공지사항</h2></div>
            </div>
            <form action="writeNotice" method="post" name="noticeBoard" onsubmit="return checkValue();" enctype="multipart/form-data">
            <table class="notice_edit">
                <tr>
                    <td class="notice_table">제목</td>
                    <td>
                        <input type="text" name="notice_title" value="${ noticeDto.notice_title }">
                    </td>
                </tr>
                <tr>
                    <td class="notice_table">이미지 선택</td>
                    <td>
                    	<input type="file" name="filename" value="${ noticeDto.notice_img }">
                    </td>
                </tr>
                <tr>
                    <td class="notice_table">상세내용</td>
                    <td>
                    	<textarea id="notice_contents" cols="100" rows="20" name="notice_conctent">
                    		<c:out value="${conctent}" />
                    	</textarea>
                   	</td>
                </tr>
            </table>
            
            
            <div class="notice_button">
                <input type="submit" value="등록" >
                <a href="notice_list"><button value="목록">목록</button></a>
            </div>
            </form>
        </div>
</body>

	<script>
		function checkValue() {
			if( !document.writeNotice.notice_title.value ){
				alert("제목을 입력하세요.");
				document.getElementById('notice_title').focus();
				return false;
			}
			if( !document.writeNotice.notice_conctent.value ){
				alert("내용을 입력하세요.");
				document.getElementById('notice_conctent').focus();
				return false;
			}
			return true;
		}
	</script>

    </body>
</html>
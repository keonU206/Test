<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
	</head>
	<body>
		<form>
		  <label>ID</label>
		  <input type="text" id="id" name="id"><br>
		  <label>패스워드</label>
		  <input type="password" id="pw" name="pw"><br>
		  <label>패스워드 확인</label>
		  <input type="password" id="pw2" name="pw2"><br>
		  <label>이메일</label>
		  <input type="text" id="m1" name="m1">@<input type="text" id="m2" name="m2"><br>
		  <label>이메일 수신여부</label>이메일 수신의 동의하십니까?<br>
		  <input type="radio" name="ag" value="동의"><label>예</label>
		  <input type="radio" name="ag" value="동의안함"><label>아니요</label><br>
		  <label>우편번호</label>
		  <input type="text" name="zip">
		  <button type="button"  onclick="openZipSearch()">검색</button><br>
		  <label>주소</label>
		  <input type="text" name="addr1"  readonly /><br>
		  <label>휴대폰</label>
		  <select>
		  <option>010</option>
		  <option>011</option>
		  <option>016</option>
		  <option>017</option>
		  <option>018</option>
		  <option>019</option>
		  </select>-<input type="text" id="tel1" name="tel1">-<input type="text" id="tel2" name="tel2" ><br>
		  #SMS 서비스를 받아보시겠습니다?
		  <input type="radio" name="telag" value="예">예
		  <input type="radio" name="telag" value="아니여">아니요<br>
		  <label>생년월일</label>
		  <select>
		  <option>02</option>
		  <option>031</option>
		  <option>032</option>
		  <option>033</option>
		  <option>041</option>
		  <option>042</option>
		  <option>043</option>
		  <option>051</option>
		  <option>052</option>
		  <option>053</option>
		  <option>054</option>
		  <option>055</option>
		  <option>061</option>
		  <option>062</option>
		  <option>063</option>
		  <option>064</option>
		  <option>070</option>
		  </select>-<input type="text" name="hometel">-<input type="text" name="hometel"><br>
		  <label>생년월일</label><br>
		  <select>
		  <option>2001</option>
		  <option>2002</option>
		  <option>2003</option>
		  <option>2004</option>
		  <option>2005</option>
		  <option>2006</option>
		  <option>2007</option>
		  <option>2008</option>
		  <option>2009</option>
		  <option>2010</option>
		  <option>2011</option>
		  <option>2012</option>
		  <option>2013</option>
		  <option>2014</option>
		  <option>2015</option>
		  <option>2016</option>
		  <option>2017</option>
		  </select>년
		   <select>
		  <option>1월</option>
		  <option>2월</option>
		  <option>3월</option>
		  <option>4월</option>
		  <option>5월</option>
		  <option>6월</option>
		  <option>7월</option>
		  <option>8월</option>
		  <option>9월</option>
		  <option>10월</option>
		  <option>11월</option>
		  <option>12월</option>
		  </select>월
		  <input type="text">일<br>
		  <label>기업회원</label>
		  <input type="radio" value="예">예
		  <input type="radio" value="아니요">아니요<br>
		  <input type="submit" value="가입하기">
		  <input type="reset" value="취소하기">
		</form>
		<script>

function openZipSearch() {

new daum.Postcode({

oncomplete: function(data) {

$('[name=zip]').val(data.zonecode); // 우편번호 (5자리)

$('[name=addr1]').val(data.address);

$('[name=addr2]').val(data.buildingName);

}

}).open();

}

</script>
	</body>
</html>
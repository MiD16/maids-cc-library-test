
<%@ page import="com.template.Enum.NotificationType"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<style>


* {
  box-sizing: border-box;
}
body,
html {
  margin: 0;
  padding: 0;
  height: 100%;
  overflow: hidden;
}
body {
  background-color: #3a3a3a;
  
}
.container {
  z-index: 1;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  text-align: center;
  padding: 10px;
  min-width: 300px;
  div {
    display: inline-block;
  }
  .lock {
    opacity: 1;
  }
  h1 {
   
    font-size: 100px;
    text-align: center;
    color: white;
    font-weight: 100;
    margin: 0;
    
 
  }
  p {
    color: white;
  }
}
.lock {
  transition: 0.5s ease;
  position: relative;
  overflow: hidden;
  opacity: 0;
  &.generated {
    transform: scale(0.5);
    position: absolute;
    animation: 2s move linear;
    animation-fill-mode: forwards;
  }
  ::after {
    content: '';
    background: blue;
    opacity: 0.3;
    display: block;
    position: absolute;
    height: 100%;
    width: 50%;
    top: 0;
    left: 0;
  }
  .bottom {
    background: #7c7c7c;
    height: 55px;
    width: 75px;
    display: block;
    position: relative;
    margin: 0 auto;
  }
  .top {
    height: 60px;
    width: 50px;
    border-radius: 50%;
    border: 10px solid #fff;
    display: block;
    position: relative;
    top: 30px;
    margin: 0 auto;
    &::after {
      padding: 10px;
      border-radius: 50%;
    }
  }
}
@keyframes move {
  to {
    top: 100%;
  }
}
@media (max-width: 420px) {
  .container {
    transform: translate(-50%,-50%) scale(0.8)
  }
  .lock.generated {
    transform: scale(0.3);
  }
}



</style>

<html>

<div class="container row">
  <h1 style="    font-family: 'Comfortaa', cursive;
    font-size: 180px;
    text-align: center;
    color: #eee;
    font-weight: 100;
    margin: 0;
    display: inline-block;">4<div class="lock" style="opacity: 1;display: inline-block;"><div class="top"></div><div class="bottom"></div>
    </div>3</h1><p style="color:white ;font-size: 25px;">ليس لديك صلاحية الوصول</p>
  <!--    <div class="action-link-wrap">
  
			<a style="color:white " onclick="history.back(-1)" class="link-button link-back-button">الرجوع الى الخلف
				</a> 
				
				
				
				<a style="color:white " href="${pageContext.request.contextPath}/" class="link-button">الرجوع الى الصفحة الرئيسية</a>
		</div>
    -->
</div>


</html>
<script type="text/javascript">



const interval = 500;

function generateLocks() {
  const lock = document.createElement('div'),
        position = generatePosition();
  lock.innerHTML = '<div class="top"></div><div class="bottom"></div>';
  lock.style.top = position[0];
  lock.style.left = position[1];
  lock.classList = 'lock'// generated';
  document.body.appendChild(lock);
  setTimeout(()=>{
    lock.style.opacity = '1';
    lock.classList.add('generated');
  },100);
  setTimeout(()=>{
    lock.parentElement.removeChild(lock);
  }, 2000);
}
function generatePosition() {
  const x = Math.round((Math.random() * 100) - 10) + '%';
  const y = Math.round(Math.random() * 100) + '%';
  return [x,y];
}
setInterval(generateLocks,interval);
generateLocks();
</script>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
	<title>의자만들기</title>
	<style type="text/css">
	div {width:500px; height:100px;	border:1px solid gray; text-align:center;}
	h2 {font-weight:bold;}
	img {width:150px; height:100px;}
	</style>
</head>
<body>
	<script type="text/javascript">
	function dragover(wpevent)
	{wpevent.preventDefault();}

	function dragstart(wpevent)
	{wpevent.dataTransfer.effectAllowed='move';
	 wpevent.dataTransfer.setData("Text",wpevent.target.id);}

	function dragend(wpevent)
	{wpevent.dataTransfer.clearData("Text");}

	function drop(wpevent)
	{wpevent.preventDefault();
	 var item=wpevent.dataTransfer.getData("Text");
	 var data=document.getElementById(item);
	 wpevent.target.appendChild(data);
	 wpevent.stopPropagation();
	 document.getElementById("result").innerHTML = data.title+"원" ;
	 }

	</script>
	
	<h2>몸통</h2>
	<div ondrop="drop(event)" ondragover="dragover(event)" >

	<img src="1.webp" id="item1" draggable="true" ondragstart="dragstart(event)"
			ondragend="dragend(event)" title="20,000"></img>
	<img src="2.webp" id="item2" draggable="true" ondragstart="dragstart(event)"
			ondragend="dragend(event)" title="25,000"></img>
	<img src="3.webp" id="item3" draggable="true" ondragstart="dragstart(event)"
			ondragend="dragend(event)" title="30,000"></img>
	</div><p>
	<h2>다리</h2>
	<div ondrop="drop(event)" ondragover="dragover(event)">
	<img src="4.webp" id="item4" draggable="true" ondragstart="dragstart(event)"
			ondragend="dragend(event)" title="30,000"></img>
	<img src="5.webp" id="item5" draggable="true" ondragstart="dragstart(event)"
			ondragend="dragend(event)" title="35,000"></img>
	</div>
	<br><br><br>
	
	<div ondrop="drop(event)" ondragover="dragover(event)" style="width: 200px; height: 300px"></div>
	<h3 id="result"></h3>

</body>
</html>
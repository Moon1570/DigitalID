<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
a:hover {
    background: #FFDD00;
    color: #AAAAAA;
    text-decoration: underline;
    cursor: pointer;
    background-color: white;
}

a:visited {
	text-decoration: none
}

</style>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body class="container">

<div class="container d-flex justify-content-center">
    <div class="card p-3 py-4">
        <div class="text-center"> 
		<img src="https://i.imgur.com/stD0Q19.jpg" width="100" class="rounded-circle">
            <h3 class="mt-2">${card.name }</h3>
			<span class="mt-1 clearfix">${card.company }</span>
			
			<div class="row mt-3 mb-3">
			
			  <div class="col-md-4">
				<h5>Projects</h5>
				<span class="num">10</span>
			  </div>
			  <div class="col-md-4">
			  <h5>Projects</h5>
				<span class="num">10</span>
			  </div>
			  <div class="col-md-4">
			  <h5>Projects</h5>
				<span class="num">10</span>
			  </div>
			
			</div>
			<div>
				<span class="mt-1 clearfix">${card.email }</span>
				<span class="mt-1 clearfix">${card.phone }</span>
			</div>
			
			<hr class="line">
			
			<small class="mt-4">I am an android developer working at google Inc at california,USA</small>
              <div class="social-buttons mt-5"> 
			   <button class="neo-button"><i class="fa fa-facebook fa-1x"></i> </button> 
			   <button class="neo-button"><i class="fa fa-linkedin fa-1x"></i></button> 
			   <button class="neo-button"><i class="fa fa-google fa-1x"></i> </button> 
			   <button class="neo-button"><i class="fa fa-youtube fa-1x"></i> </button>
			   <button class="neo-button"><i class="fa fa-twitter fa-1x"></i> </button>
			  </div>
			  
			 <div class="profile mt-5">
				
			<input type="hidden" value="${card.name }" id="name" >
			<input type="hidden" value="${card.phone }" id="phone" >
			<input type="hidden" value="${card.email }" id="email" >
			<input type="hidden" value="${card.company }" id="company" >
			
			
			 <a id="save_as_contact" class="profile_button px-5">Save Contact</a>

		</div>
			   
        </div>
    </div>
</div>
<script type="text/javascript">
const save_as_contact = document.getElementById('save_as_contact');
save_as_contact.onclick = showFoo;



function showFoo() {
	var contact = {
		      name: document.getElementById("name").value,
		      phone: document.getElementById('phone').value,
		      email: document.getElementById('email').value,
		      company: document.getElementById('company').value
		      //socialpro: "<?php echo $row["city"]; ?>"
		    };

		    var vcard = "BEGIN:VCARD\nVERSION:4.0\nFN:" + contact.name + "\nTEL;TYPE=work,voice:" + contact.phone + "\nEMAIL:" + contact.email + "\nEND:VCARD";

		    var blob = new Blob([vcard], {
		      type: "text/vcard;charset=utf-8"
		    });

		    var link = document.createElement('a');
		    link.href = window.URL.createObjectURL(blob);
		    link.download = contact.name + ".vcf";
		    link.click();
	}

</script>
</body>
</html>
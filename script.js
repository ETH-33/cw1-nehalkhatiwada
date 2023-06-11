document.getElementById('loginForm').addEventListener('submit', function(event) {
    event.preventDefault();
  
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;
    const message = document.getElementById('message');
  
    if(username === "nehal" && password === "pass") {
    
      window.location.href = "dashboard.html";
    } else {
      message.innerText = "Invalid username or password!";
    }
  });



  document.getElementById("signupButton").addEventListener("click", function() {
    var form = document.getElementById("signupForm");
    if(form.style.display === "none" || form.style.display === ""){
      form.style.display = "block";
    } else {
      form.style.display = "none";
    }
  });
  
 
 

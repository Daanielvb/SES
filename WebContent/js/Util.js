function cadastro() {
    document.getElementById("cadastro").innerHTML =+
    		"<form class=\"form-signin\"> "+
    		"<h2 class=\"form-signin-heading\">Cadastro</h2>"+
      		"<input type=\"text\" class=\"form-control\" name=\"nome\" placeholder=\"Nome\" required=\"\" autofocus=\"\" />"+
      		"<BR />"+
      		"<input type=\"text\" class=\"form-control\" name=\"cpf\" placeholder=\"CPF\" required=\"\" autofocus=\"\" />"+
      		"<BR />"+
      		"<input type=\"text\" class=\"form-control\" name=\"email\" placeholder=\"email\" required=\"\" autofocus=\"\" />"+
      		"<BR />"+
      		"<input type=\"password\" class=\"form-control\" name=\"senha\" placeholder=\"Senha\" required=\"\"/>"+      
      		"<br/>"+
      		"<button class=\"btn btn-lg btn-primary btn-block\" type=\"submit\">Submeter</button>"+
      		"<a href=\"index.jsp\" class=\"btn btn-lg btn-default btn-block\">cancelar</a>   "+
    	"</form>";
}

var flag = true;
function mudar(flag){
	if(this.flag){
		document.getElementById("texto").innerHTML="Ocultar";
		this.flag=false;
	}
	else{
		document.getElementById("texto").innerHTML="Saiba Mais";
		this.flag=true;
	}
}

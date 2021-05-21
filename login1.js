function validazione(){
	const avviso=document.querySelector('h2 span');
		console.log(form.email.value);
	if(form.email.value.length == 0 ||
       form.password.value.length == 0){
		
		avviso.textContent='';
		avviso.textContent='Compila tutti i campi!';
		form.appendChild(avviso);
		event.preventDefault();
	   }else{
		   avviso.textContent='';
	   }
	   
	
}

function Accedi(){
	const inte=document.querySelector('h1');
	inte.textContent='Accedi';
	console.log(inte);
	
	event.currentTarget.removeEventListener('click',Accedi);
	const form1=document.querySelector('.stile');
	form1.classList.remove('hidden');
	
	const form2=document.querySelector('#contenitore');
	form2.classList.add('hidden');

	const desc2= document.querySelector('span');
	desc2.addEventListener('click',Registrati);

}

function Registrati(){
	const inte=document.querySelector('h1');
	inte.textContent='Registrati!';
	const accedi=document.querySelector('.stile');
	accedi.classList.add('hidden');
	event.currentTarget.removeEventListener('click',Registrati);
	
	const desc= document.querySelectorAll('span');
	desc[1].addEventListener('click',Accedi);
	
	const regis=document.querySelector('#contenitore');
	regis.classList.remove('hidden');
	console.log("Ho rimosso la classe");
	

	
}

function registrazione(event){	
			const modulo=document.querySelector('#reg');
			//console.log(modulo.nome.value);
			//console.log(modulo.email.value);
			//console.log(modulo.password.value);
					//event.preventDefault();
					//console.log(er);				
			const er=document.querySelectorAll('h4');


			if(modulo.nome.value.length == 0 ||
			   modulo.email.value.length == 0 ){
					event.preventDefault();
					er[0].classList.remove('hidden');
			}else{
					er[0].classList.add('hidden');
					//event.preventDefault();
			}
			
			const ck_password = /^[A-Za-z0-9]{6,12}$/;
			
		     if (!ck_password.test(modulo.password.value)) {
					event.preventDefault();
					er[1].classList.remove('hidden');
			}

			
			/*if(modulo.password.value.length <= 6){
					event.preventDefault();
					er[1].classList.remove('hidden');
					
			}*/else{	
					er[1].classList.add('hidden');		
					//event.preventDefault();
			}
			//event.preventDefault();

}

const form = document.forms['nome_form'];
form.addEventListener('submit',validazione);

const reg= document.querySelector('span');
reg.addEventListener('click', Registrati);

const regi = document.querySelectorAll('form');
regi[1].addEventListener('submit', registrazione);
let titolo=0;
let regista=0;
let anno=0;
let genre=0;
let poster=0;
let streaming=0;

function Aggiungi(event){
	const opzioni=document.querySelector('#options');
	opzioni.classList.remove('nascondi');
	
}

function appendi(json){
	console.log(json.Title);
	const contenitore=document.querySelector('#informazioni');
	const ref= contenitore.querySelector('div');
	ref.innerHTML='';
	ref.classList.remove('nascondi');
	
	const intestazione=document.createElement('div');
	intestazione.classList.add('head');
	ref.appendChild(intestazione);

	const tit=document.createElement('h2');
	tit.textContent= json.Title;
	titolo=json.Title;
	const aggiungi=document.createElement('img');
	aggiungi.src='aggiungi.png';
	aggiungi.classList.add('prefe');
	intestazione.appendChild(tit);
	intestazione.appendChild(aggiungi);
	addEventListener('click', Aggiungi);

	const immagine=document.createElement('img');
	immagine.src=json.Poster;
	ref.appendChild(immagine);
	poster=json.Poster;
	
	
		const dato0=document.createElement('h4');
		const dato1=document.createElement('h4');
		const dato2=document.createElement('h4');
		const dato3=document.createElement('h4');

		ref.appendChild(dato0);
		ref.appendChild(dato1);
		ref.appendChild(dato2);
		ref.appendChild(dato3);
	
	//const dati=contenitore.querySelectorAll('h3');
	dato0.textContent='Anno di uscita:' + json.Year;
	const year=json.Year;
	anno=year.substring(0,4);
	console.log(anno);
	dato1.textContent='Cast:' + json.Actors;
	dato2.textContent='Genere:' + json.Genre;
	const genere=json.Genre.split(",");
	genre=genere[0];
	//console.log(genre);
	
	dato3.textContent='Regista:' + json.Director;
	const reg=json.Director.split(",");
	regista=reg[0];


	//contenitore.appendChild(immagine);

}

function inserimento(event){
	console.log("STampo il genere"+ genre);
	//console.log(regista);
	//console.log(anno);
	event.preventDefault();
	const mod2=document.querySelectorAll('form');
	streaming=mod2[1].Streaming.value;
	
	const url='http://localhost/prova/inserimentocat.php?titolo='+titolo+'&regista='+regista+'&anno='+anno+'&genere='+genre+'&streaming='+streaming+'&poster='+poster;
	console.log(url);
	
	fetch(url).then(onResponse,onError).then(onJson2);
}

function onJson2(json){
	console.log(json);
	const sezione=document.querySelector('#options');
	const avviso=sezione.querySelector('h2');
	avviso.textContent=json;
	avviso.classList.remove('nascondi');
	//appendi(json);
}

function onJson(json){
	console.log(json);
	if(json.Response==="False"){
		const errore=document.querySelector('h2');
		errore.classList.remove('nascondi');
	}else{
		const errore=document.querySelector('h2');
		errore.classList.add('nascondi');
	    appendi(json);

	}
}

function onResponse(response){
	return response.json();
	
}
function onError(error){
	console.log("Error:" +error);
}


function validazione(){
	event.preventDefault();
	const valore=document.querySelector('input');
	const ricerca=valore.value;
	const ric=encodeURIComponent(ricerca);
	console.log(ric);
	if (ric===''){
	const contenitore=document.querySelector('#informazioni');
	const ref= contenitore.querySelector('div');
	ref.classList.add('nascondi');
	ref.innerHTML='';
	}else{
    //appendo all'url le variabili get
	const url='http://localhost/prova/out_catalogo.php?titolo=';
	const urldef=url + ric;
	console.log(urldef);
	fetch(urldef).then(onResponse,onError).then(onJson);
}
}
/*function validazione(){
	const valore=document.querySelector('input');
	const ricerca=valore.value;
	console.log(ricerca);//ok
	const avviso= document.createElement('h2');
	avviso.textContent="sono nella funzione";
	const bo=document.querySelector('body');
	bo.appendChild(avviso);	
	const formdata= new FormData();
	formdata.append("titolo",ricerca);
	//console.log(formdata);
	
	fetch('http://localhost/prova/out_catalogo.php',{
			method: "post",
			body: formdata}).then(onResponse, onError).then(onJson);
			
//		event.preventDefault();
		
}*/

const mod = document.querySelector('form');
console.log(mod);
mod.addEventListener('submit',validazione);

const mod2=document.querySelectorAll('form');
mod2[1].addEventListener('submit', inserimento);
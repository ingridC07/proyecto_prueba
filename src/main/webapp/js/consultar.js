/**
 * 
 */

$(document).ready(function() {

$('.btn_consulta_general').on('click',function(){
	consultarlineas();
});	

	function consultarlineas() {


		$.ajax({
			url: "Servletgestionlineas",
			type: "GET",
			//dataType:"json",
			success: function(result) {
				alert("prueba");
				console.log(result);
				let tabla = document.querySelector('#tab');
				console.log(tabla);
				tabla.innerHTML="";
				tabla.innerHTML=`<tr><th>Codigo</th>
									<th>Nombre</th>
									</tr>`;
				for (let i of result) {
					tabla.innerHTML += `<tr><td>${i.codigoline}</td>
							  				<td>${i.nombrelinea}</td>
											</tr>`;

				}

			}



		});
	}


});
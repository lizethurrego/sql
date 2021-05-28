let precioJuego = 48.5;
let letra = 'Z';
let estado = true;

console.log("Precio de Fifa18 es: " + precioJuego);
console.log("La letra es: " + letra);
console.log("Es esta es: " + estado);


//--------------------------------------------------------

const pi = Math.PI;
const google = "https://www.google.com/";

console.log(pi);
console.log(google);

//--------------------------------------------------------

/*
Cree un programa que declare e inicialice una variable con el valor 50, e imprima tal variable cuatro veces.
*/

let numeroVeces = 4
let numero = 50;

for (let i = 0; i < numeroVeces; i++) {
    console.log(numero);
}

/*
Cree un programa que pida al usuario el valor de la gravedad terrestre en m, guarde tal valor en una constante y a continuación imprima un mensaje al usuario confirmando el valor de la gravedad introducida.
*/

const GRAVEDAD = prompt("Digite el valor de la gravedad");

//alert(GRAVEDAD);
let mensaje="";

var opcion = confirm("Clicka en Aceptar o Cancelar");
    if (opcion == true) {
        mensaje = "Has confirmado el valor de la gravedad";
    } else {
        mensaje = "No has confirmado el valor de la gravedad";
    }

    alert("El valor seleccionado es: "+ mensaje)

//confirm("¿El valor de la gravedad es?: " + GRAVEDAD);

/*
Cree un programa que pida al usuario su edad, domicilio y estado civil, a continuación, confirme al usuario los valores introducidos por éste.
*/

let edad = prompt("Digite su edad");
let domicilio = prompt("Digite su domicilio"); 
let estadoCivil = prompt("Digite su estado civil");


let salida = "Su edad es  " + edad + 
 ", su domicilio es "+ domicilio +"\n" +
 "su estado civil es "+ estadoCivil;

 alert(salida);

 /*
 Cree un programa que pida al usuario la fecha de su nacimiento, almacene tal valor en una constante e imprima un mensaje al usuario notificando el día de su cumpleaños
 */

const EDAD2 = prompt("Digite la fecha de su nacimiento");

let res = EDAD2.split("/");

console.log("Tu cumples el dia " + res[0] + " del mes " + res[1]);
// segundo taller
let montoPrestamo = parseInt(prompt("Por favor dame el monto del prestamo"));;
let plazoMeses = parseInt(prompt("Por favor dame el numero de meses"));

let interes = (montoPrestamo * 2.7)/100;

let mensual = montoPrestamo/plazoMeses;

let totalMes = mensual + interes;

const formatter = new Intl.NumberFormat('en-US', {
  style: 'currency',
  currency: 'USD',
  minimumFractionDigits: 2
})


for(i=1;i<=plazoMeses;i++){

    document.write(`La cuota numero ${i} es de  ${formatter.format(Math.round(totalMes))} pesos <br>`);

}

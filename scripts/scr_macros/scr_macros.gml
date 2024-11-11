//MACROS DEL JUEGO - VARIABLES GLOBALES
//Direcciones personajes
#macro RIGHT 0
#macro UP 1
#macro LEFT 2
#macro DOWN 3

//Si el personaje tiene la agenda o no
global.book=false;

//Personaje seleccionado
global.select=0;

//Bool para saber si viene la sección de preguntas o no
global.preg=false;

//nivel actual
global.current=0;

//Array con cantidad de respuestas correctas por nivel
global.correct = [0,0,0,0,0,0];
global.good_ending=true;


//Arrays eventos: Guardan en orden los eventos de cada nivel y si ya han ocurrido o no (true/false)
//eventos nivel 1
#macro INICIO 0
#macro CHARLA 1
#macro CAMINO 2
#macro CLASE_1 3
#macro INTEG 4
#macro CALL_1 5
#macro CEE 6
#macro RULES 7
#macro END_1 8

global.events_1 = [false,false,false,false,false,false,false,false,false];

//eventos nivel 2
#macro CLASE_2 0
#macro VIAJE_1 1
#macro BIBLIOTECA 2
#macro CREDITOS 3
#macro END_2 4

global.events_2 = [false,false,false,false,false];

//eventos nivel 3
#macro CLASE_3 0
#macro SECRE 1
#macro PROFE_1 2
#macro PROFE_2 3
#macro LEOPOLDO 4
#macro PREG3 5

global.events_3 = [false,false,false,false,false,false];

global.integ=false;

//eventos nivel 4
#macro INICIO4 0
#macro CAFETA 1
#macro CEE_2 2
#macro PROTOCOLO 3
#macro CLASE_4 4
#macro CEE_3 5
#macro INCLUSION 6
#macro PREG4 7

global.events_4=[false,false,false,false,false,false,false,false];

//eventos nivel 5
#macro SALA_EST 0
#macro PC_CEE4 1
#macro PRACTICA 2
#macro GINA_CONV 3
#macro FABIAN_CONV 4
#macro SIGDIA 5
#macro BRUNO_CONV 6
#macro PREG5 7

global.events_5=[false,false,false,false,false,false,false,false];

global.end_game=false;

//Array sprites personajes
#macro EMILY 1
#macro RODRIGO 2
#macro JUANITA 3
#macro DIR 4
#macro MAGDA 5
#macro WILL 6
#macro GABRIEL 7
#macro HUGO 8
#macro TOBIAS 9
#macro NICANOR 10
#macro FELIPE 11
#macro BIBLIOTECARIA 12
#macro LEO 13
#macro ZAFIRO 14
#macro PAULINE 15
#macro CHESTER 16
#macro MARCELO 17
#macro MONSERRAT 18
#macro NICOLAS 19
#macro RONNY 20
#macro FABIAN 21
#macro GINA 22
#macro BRUNO 23
#macro TIA 24
#macro PROTA 25

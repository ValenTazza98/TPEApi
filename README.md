# TPE

Trabajo especial de Valentina Tazza Comision A

Documentacion:

Endpoints (Ejemplificado con movies pero sirve igualmente para projections)

Method	Url	Code	Default Response
GET     /movies	    200	    Array<movie>
GET	    /movies/:id	200	    movie
POST	/movies	    201	    movie
PUT	    /movies/:id	200	    movie
DELETE	/movies/:id	200 	movie

Pagination (Añadir parametros al pedido GET):

/movies?page=1&limit=10

page es la pagina que devolvera y limit la cantidad de elementos por pagina, en caso de no setear limit este se autodetermina limit=10.
Si se le coloca algo distinto a un int se seteara automaticamente sin paginacion.

SearchBy (Añadir parametros al pedido GET):

/movies?searchby=nametable&element=name

nametable es el nombre de la columna desde la cual se desea buscar y name es el nombre del elemento que se desea buscar. En caso de no aclarar name busca una string vacia "".

OrderBy (Añadir parametros al pedido GET):

/movies?orderby=nametable&direction=ASC

nametable es el nombre de la columna desde la cual se desea buscar y direction es la direccion en la que se desea ordenar la informacion (ascendente o descendente). En el caso de no determinar la direccion se ordenara ascendentemente.

<html>
    <head>
        <title>Informatica</title>
        <style type="text/css">
	        .portada {
                display:grid;
                grid-template-columns:auto auto auto auto;
                grid-gap: 10px;
                grid-auto-rows: 600px;

            }
            .uno {
                grid-column: 2 / 3;
                border: 4px solid #95B5FF;
                background-color: #DBF3FF;
                text-align: center;
                line-height: 40px;
            }
            .dos {
                grid-column: 3/ 4;
                border: 4px solid #95B5FF;
                background-color: #DBF3FF;
                text-align: center;
                line-height: 40px;
            }
            
            p {
                font-family: Arial, Helvetica, sans-serif;
                color:rgb(0, 0, 0);
                font-size: 20px; 
            }
            h3 {
                font-family:'Times New Roman', Times, serif;
                color:rgb(255, 122, 40);
                font-size: 30px; 
            }
            h4
            {
                font-family:Arial, Helvetica, sans-serif;
                color:rgb(93, 0, 255);
                font-size: 20px; 
            }

        </style>	    
    </head>
    <body>
        <div class="portada">
            
            <div class="uno"><h3>Iniciar Secion</h3>
                <form method="GET" action="<?= base_url()?>presentacion_procesos">
                    Usuario<br>
                    <input type="text" value="" name="nombre"/><br>
                    Pasword<br>
                    <input type="text" value="" name="apellido"/><br><br>
                    <input type="submit" value="Enviar" name="ok"/>
                    
                <form>
               
            </div>
            <div class="dos"><h3>Instrucciones</h3>
                <p>
                   
                </p>
                
            </div>
          </div>
    </body>
</html>
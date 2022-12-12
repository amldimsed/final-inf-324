
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
            
            <div class="uno"><h3>Datos de Proceso</h3>
                <form method="GET" action="<?= base_url()?>LinkDatos">
                   <p>
                <table align="center" border="1">
                        <tr>
                            <td>flujo</td>
                            <td>proceso</td>
                            <td>proceso siguiente</td>
                            <td>tipo</td>
                            <td>rol</td>
                        </tr>       
                        <?php
                            foreach($filas as $fila){

                                echo "<tr>";
                                echo "<td>$fila->flujo</td>";
                                echo "<td>$fila->proceso</td>";
                                echo "<td>$fila->proceso_sig</td>";
                                echo "<td>$fila->tipo</td>";
                                echo "<td>$fila->rol</td>";
                                echo "<tr>";
                            }
                                
                        
                        ?> 
                    </table>
                    </p> 
                   <input type="submit" value="continuar" name="continuar"/>
                    
                <form>
               
            </div>
            <div class="dos"><h3>Instrucciones</h3>
                <p>
                
                </p>
                
            </div>
          </div>
    </body>
</html>
Algoritmo ControlDeStockEPP
    // Declarar variables
    Definir cascos, guantes, lentes, barbijos, mamelucos Como Entero
    Definir cantidadARetirar, cantidadRetirada Como Entero
    Definir nombreEmpleado Como Cadena
	
    // Inicializar el stock inicial
    cascos = 50
    guantes = 50
    lentes = 50
    barbijos = 50
    mamelucos = 50
	
    Escribir "Bienvenido al sistema de control de stock de EPP."
    
    // Ciclo principal
    Repetir
        Escribir "-------------------------"
        Escribir "Stock de EPP Disponible:"
        Escribir "Cascos: ", cascos
        Escribir "Guantes: ", guantes
        Escribir "Lentes de seguridad: ", lentes
        Escribir "Barbijos para polvo: ", barbijos
        Escribir "Mamelucos descartables: ", mamelucos
        Escribir "-------------------------"
        
        // Solicitar el nombre del empleado
        Escribir "Ingrese su nombre: "
        Leer nombreEmpleado
        
        // Solicitar qué EPP se va a retirar
        Escribir "Seleccione el EPP que desea retirar:"
        Escribir "1. Cascos"
        Escribir "2. Guantes"
        Escribir "3. Lentes de seguridad"
        Escribir "4. Barbijos para polvo"
        Escribir "5. Mamelucos descartables"
        Escribir "6. Salir"
        
        Leer cantidadARetirar
        
        Si cantidadARetirar <> 6 Entonces
            Escribir "¿Cuántos desea retirar?"
            Leer cantidadRetirada
            
            Segun cantidadARetirar Hacer
                1:
                    Si cascos >= cantidadRetirada Entonces
                        cascos = cascos - cantidadRetirada
                        Si cascos = 0 Entonces
                            Escribir "Ya no hay stock de cascos."
                        Sino
                            Escribir nombreEmpleado , " ha retirado " , cantidadRetirada , " cascos."
                        FinSi
                    Sino
                        Escribir "No hay suficientes cascos disponibles en el stock."
                    FinSi
                2:
                    Si guantes >= cantidadRetirada Entonces
                        guantes = guantes - cantidadRetirada
                        Si guantes = 0 Entonces
                            Escribir "Ya no hay stock de guantes."
                        Sino
                            Escribir nombreEmpleado , " ha retirado " , cantidadRetirada , " pares de guantes."
                        FinSi
                    Sino
                        Escribir "No hay suficientes guantes disponibles en el stock."
                    FinSi
                3:
                    Si lentes >= cantidadRetirada Entonces
                        lentes = lentes - cantidadRetirada
                        Si lentes = 0 Entonces
                            Escribir "Ya no hay stock de lentes de seguridad."
                        Sino
                            Escribir nombreEmpleado , " ha retirado " , cantidadRetirada , " pares de lentes de seguridad."
                        FinSi
                    Sino
                        Escribir "No hay suficientes lentes de seguridad disponibles en el stock."
                    FinSi
                4:
                    Si barbijos >= cantidadRetirada Entonces
                        barbijos = barbijos - cantidadRetirada
                        Si barbijos = 0 Entonces
                            Escribir "Ya no hay stock de barbijos para polvo."
                        Sino
                            Escribir nombreEmpleado , " ha retirado " , cantidadRetirada , " barbijos para polvo."
                        FinSi
                    Sino
                        Escribir "No hay suficientes barbijos para polvo disponibles en el stock."
                    FinSi
                5:
                    Si mamelucos >= cantidadRetirada Entonces
                        mamelucos = mamelucos - cantidadRetirada
                        Si mamelucos = 0 Entonces
                            Escribir "Ya no hay stock de mamelucos descartables."
                        Sino
                            Escribir nombreEmpleado , " ha retirado " , cantidadRetirada , " mamelucos descartables."
                        FinSi
                    Sino
                        Escribir "No hay suficientes mamelucos descartables disponibles en el stock."
                    FinSi
                De Otro Modo:
                    Escribir "Opción inválida. Por favor, seleccione una opción válida."
            FinSegun
        FinSi
        
        // Comprobar si es necesario reponer el stock
        Si cascos < 10 O guantes < 10 O lentes < 10 O barbijos < 10 O mamelucos < 10 Entonces
            Escribir "¡ALERTA! Alguno de los EPP están por agotarse. Reponga el stock."
        FinSi
    Hasta Que cantidadARetirar = 6
FinAlgoritmo

package prueba.tecnica.util;

//Los métodos de esta clase son declarados 'static' para hacerlos accesibles
//sin necesidad de crear una instancia de la clase
public class StringUtil {

	/**
	 * Método para validar si una cadena está vacía
	 * 
	 * @param value
	 *            cadena a validar
	 * @return true si el valor está vacío, false en caso contrario
	 */
	public static boolean isNullOrEmpty(String value) {
		// 'value == null' Linea para validar si la cadena es null, es decir, no se le asigno ningun valor
		// 'value.trim()' Se encarga de eliminar los espacios en blanco a la izquierda y derecha de una cadena
		// 'value.length()' Se encarga de obtener la longitud de la cadena
		// 'value.trim().length() == 0' Se encarga de validar que la cadena no esté vacía
		if (value == null || value.trim().length() == 0) {
			return true;
		}
		return false;
	}
	public static boolean isNullOrEmpty(int i) {//para is null de enteros
		// 'value == null' Linea para validar si la cadena es null, es decir, no se le asigno ningun valor
		// 'value.trim()' Se encarga de eliminar los espacios en blanco a la izquierda y derecha de una cadena
		// 'value.length()' Se encarga de obtener la longitud de la cadena
		// 'value.trim().length() == 0' Se encarga de validar que la cadena no esté vacía
		if (i == 0) {
			return true;
		}
		return false;
	}
	public static boolean isNullOrEmpty(Object object) {
		// 'value == null' Linea para validar si la cadena es null, es decir, no se le asigno ningun valor
		// 'value.trim()' Se encarga de eliminar los espacios en blanco a la izquierda y derecha de una cadena
		// 'value.length()' Se encarga de obtener la longitud de la cadena
		// 'value.trim().length() == 0' Se encarga de validar que la cadena no esté vacía
		if (object == null) {
			return true;
		}
		return false;
	}
	

	/**
	 * Método para validar si una cadena es un email
	 * 
	 * @param value
	 *            correo electrónico a validar
	 * @return true si es un correo, false en caso contrario
	 */
	public static boolean isEmail(String value) {
		// Declaramos el contador que usaremos en este método
		int contador = 0;
		// Usamos el método que tenemos en está clase para validar que la cadena no venga vacía
		if (!isNullOrEmpty(value)) {
			// Verificamos que al menos contengo un '@' y un '.com o .org'
			if (value.contains("@") && (value.contains(".com") || value.contains(".org"))) {
				
				//Pequeño algoritmo para válidar que el correo no tenga dos '@'
				for (int i = 0; i < value.length(); i++) {
					
					//Se pregunta si la letra obtenida en el substring es igual al '@'
					if (value.substring(i, i + 1).equals("@")) {
						// El simbolo ++ es usado para hacer el incremento en 1 a variables numericas
						// Es decir, contador incrementa su valor en +1
						// Se podría representar 'contador = contador +1'
						contador++;
						
						//Si el contador llega a 2, entonces el email tiene dos '@' y es un correo inválido
						if (contador == 2) {
							return false;
						}
					}
				}
				return true;
			}
		}
		return false;
	}
	
	/**
	 * Método para válidar si el valor es un numero
	 * 
	 * @param value
	 *            cadena a válidar
	 * @return true si es un número, false en caso contrario
	 */
	public static boolean isNumber(String value) {
		// Este método implementa las excepciones, es decir, el código que
		// podría marcar algun error que podría detener la ejecución de la
		// aplicación.
		// Las exceptions se manejan dentro de bloques try{}catch(){}
		try {
			// En la siguiente linea de código, se convierte un 'String' a un
			// 'int', está operación es 'insegura' ya que la cadena podría traer
			// valores que no son númericos y eso podría causar una exception
			Integer.parseInt(value);
			// La unica manera de que el código llegué al 'return true' es
			// cuando no hay ningún error o mejor dicho, ninguna exception
			return true;
		} catch (NumberFormatException ex) {
			// Cuando existe una exception es necesario realizar ciertas
			// operaciones y también imprimir la 'traza' del error, como se hace
			// en la siguiente linea
			ex.printStackTrace();
		}
		return false;
	}
	
	
	

}

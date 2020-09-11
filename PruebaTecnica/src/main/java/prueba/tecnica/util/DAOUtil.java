package prueba.tecnica.util;

import java.io.Serializable;
import java.util.Map;

import org.springframework.stereotype.Component;

import prueba.tecnica.model.DataTableFilter;
import prueba.tecnica.model.DataTableFilter.ColumnCriterias;
import prueba.tecnica.model.DataTableFilter.OrderCriterias;

@Component
public class DAOUtil implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5490408833376152374L;

	/**
	 * Método encargado de generar las condiciones y el order by para los querys
	 * 
	 * @param filtro
	 *          Filtro de datatables, el cual contiene la informaci�n por la
	 *          cual se requiere filtrar la b�squeda
	 * @return Retorna el StringBuilder con todas las condiciones incorporadas
	 */
	public StringBuilder getCondiciones(DataTableFilter filtro) {
		StringBuilder condiciones = new StringBuilder();
		for (Map<ColumnCriterias, String> columna : filtro.getColumns()) {
			if (!StringUtil.isNullOrEmpty(columna.get(ColumnCriterias.searchValue))) {
				condiciones.append(" AND ");
				condiciones.append(columna.get(ColumnCriterias.name));
				condiciones.append(" RLIKE '");
				condiciones.append(columna.get(ColumnCriterias.searchValue));
				condiciones.append("'");
			}
		}

		Map<ColumnCriterias, String> columna = filtro.getColumns().get(Integer.parseInt(filtro.getOrder().get(0).get(OrderCriterias.column)));
		condiciones.append(" ORDER BY ");
		condiciones.append(columna.get(ColumnCriterias.name));
		condiciones.append(" ").append(filtro.getOrder().get(0).get(OrderCriterias.dir));
		return condiciones;
	}

	/**
	 * Método encargado de generar las condiciones y el order by para los querys
	 * 
	 * @param filtro
	 *          Filtro de datatables, el cual contiene la informaci�n por la
	 *          cual se requiere filtrar la b�squeda
	 * @return Retorna el StringBuilder con todas las condiciones incorporadas
	 */
	public StringBuilder getOrderBy(DataTableFilter filtro) {
		StringBuilder condiciones = new StringBuilder();
		for (Map<ColumnCriterias, String> columna : filtro.getColumns()) {
			if (!StringUtil.isNullOrEmpty(columna.get(ColumnCriterias.searchValue))) {
				condiciones.append(" AND ");
				condiciones.append(columna.get(ColumnCriterias.name));
				condiciones.append(" LIKE '%");
				condiciones.append(columna.get(ColumnCriterias.searchValue));
				condiciones.append("%'");
			}
		}
		return condiciones;
	}

	/**
	 * Método encargado de agregar la paginaci�n a las condiciones que se
	 * reciben como parametro
	 * 
	 * @param filtro
	 *          Filtro de datatables, el cual contiene el n�mero de registros
	 *          que se deben mostrar por pagina
	 * @param condiciones
	 *          Condiciones a las cuales se les agregar� la paginacion
	 */
	public void addPaginacion(DataTableFilter filtro, StringBuilder condiciones) {
		condiciones.append(" LIMIT ").append(filtro.getLength()).append(" OFFSET ").append(filtro.getStart());
	}

}


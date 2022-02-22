#' Asigna etiquetas de datos a las variables especificadas
#' `r lifecycle::badge("experimental")`
#'
#' @param tbl [data.frame]: Conexión a base de datos o dataframe con los datos
#' @param vars [character]: Si especificado, solo se asignaran las etiquetas a esas variables.
#' @param dict [list]: Lista de etiquetas a asignar a las variables.
#'
#' @return Los datos introducidos en el argumento \code{tbl} pero con etiquetas de datos
#'
#' @details
#'   Esta función permite asignar etiquetas de datos a las variables de un data.frame
#'   o equivalente, a partir del diccionario de la encuesta.
#'
#' @seealso
#'   Etiquetas de datos \code{vignette("labeler", package = "labeler")}
#'
#' @export
#'
#' @examples
#' \dontrun{
#'   engih <- data.frame(ZONA = c(1, 2))
#'   str(engih)
#'   str(egi_set_labels(engih))
#'}
egi_set_labels <- function(tbl, dict = engihr::dict, vars = NULL) {
    labeler::use_labels(tbl, dict, vars)
}


#' @rdname egi_set_labels
#' @export
egi_setLabels <- function(tbl, dict = engihr::dict, vars = NULL) {
  lifecycle::deprecate_warn('0.1.0', 'egi_setLabels()', 'egi_set_labels()')
  egi_set_labels(tbl, dict, vars)
}



#' Utiliza las etiquetas de datos de una variable
#' `r lifecycle::badge("experimental")`
#'
#' @param tbl [data.frame]: Conexión a base de datos o dataframe con los datos
#' @param vars [character]: Si especificado, solo se asignaran las etiquetas a esas variables.
#' @param dict [list]: Lista de etiquetas a asignar a las variables.
#'
#' @return Los datos suministrados en el argumento \code{tbl}, pero en lugar de
#'   valores utilizando las etiquetas de datos correspondientes
#'
#' @seealso
#'   Etiquetas de datos \code{vignette("labeler", package = "labeler")}
#'
#' @export
#'
#' @examples
#' \dontrun{
#'   engih <- data.frame(ZONA = c(1, 2))
#'   engih
#'   egi_use_labels(engih)
#'}
egi_use_labels <- function(tbl, dict = engihr::dict, vars = NULL) {
  labeler::use_labels(tbl, dict, vars)
}


#' @rdname egi_use_labels
#' @export
egi_useLabels <- function(tbl, dict = engihr::dict, vars = NULL) {
  lifecycle::deprecate_warn('0.1.0', 'egi_useLabels()', 'egi_use_labels()')
  egi_use_labels(tbl, dict, vars)
}

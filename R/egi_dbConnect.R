#' Conexión a base de datos
#'
#'   `r lifecycle::badge("experimental")`
#'
#'   Vea \code{Dmisc::\link[Dmisc:dbConnect]{dbConnect}}
#'
#' @return Conexión a base de datos.
#' @export
#'
#' @examples
#' \dontrun{
#'   egi_conn <- egi_dbConnect()
#' }
egi_dbConnect <- function(){
  Dmisc::dbConnect(db_name = 'engih2018')
}

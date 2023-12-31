#' Color Palette for PLSDA-batch
#'
#' The function outputs a vector of colors.
#'
#' @importFrom mixOmics color.mixo
#' @importFrom scales hue_pal
#'
#' @param num.vector An integer vector specifying which color to use in
#' the palette (there are only 25 colors available).
#'
#' @return
#' A vector of colors (25 colors max.)
#'
#' @author Yiwen Wang, Kim-Anh Lê Cao
#'
#' @examples
#' pb_color(seq_len(5))
#'
#' @export
pb_color <- function(num.vector){
    hex_codes1 <- hue_pal(l = 65, c = 100)(10)
    hex_codes2 <- hue_pal(l = 40, c = 60)(5)

    colorlist <- c(hex_codes1[c(1,4,7,2,8,3,9,5,10,6)],
                color.mixo(c(1,2,6,3,9,4,5,7,10)),
                hex_codes2[seq_len(3)], color.mixo(8), hex_codes2[4:5])

    mycolor <- colorlist[num.vector]
    return(mycolor)
}

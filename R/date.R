#' demo生成器界面
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#' @param func_bottom  下面一栏
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' dateUI()
dateUI <- function(tabTitle ='日期',
                   colTitles =c('操作区域','预览区域','显示区域'),
                   widthRates =c(4,8,12),
                   func_left = dateUI_left,
                   func_right =dateUI_right,
                   func_bottom = dateUI_bottom
) {

  #三栏式设置，可以复制
  res = tsui::uiGen3(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right,func_bottom = func_bottom )
  return(res)

}





#' 请输入文件
#'
#' @return 返回值
#' @export
#'
#' @examples
#' dateUI_left()
dateUI_left <- function() {


  res <- tagList(
    tsui::mdl_date(id = 'date_orderDate',label = '订单日期'),
    shiny::actionButton(inputId = 'btn_dateShow',label = '显示日期'),
    shiny::verbatimTextOutput(outputId = 'date_res')
  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' dateUI_bottom()
dateUI_right <- function() {
  res <- tagList(

   tsui::mdl_dateRange(id = 'dateRange_orderDates',label = '订单日期范围')

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' dateUI_bottom()
dateUI_bottom <- function() {
  res <- tagList(


  )
  return(res)

}

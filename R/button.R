#' 按纽生成生成器界面
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
#' buttonUI()
buttonUI <- function(tabTitle ='按纽',
                   colTitles =c('一般按纽','下载按纽','显示区域'),
                   widthRates =c(4,8,12),
                   func_left = buttonUI_left,
                   func_right =buttonUI_right,
                   func_bottom = buttonUI_bottom
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
#' buttonUI_left()
buttonUI_left <- function() {


  res <- tagList(
    shiny::actionButton(inputId = 'btn_shiny',label = 'shiny按纽'),
    shiny::h5('按纽在shiny中可以作为计数器'),
    shiny::uiOutput(outputId = 'ui_shinyButton'),
    shiny::h5('每秒钟更新一次按纽显示文本'),
    shiny::actionButton(inputId = 'btn_shinyWidgets',label = '按纽显示当前时间')

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' buttonUI_bottom()
buttonUI_right <- function() {
  res <- tagList(

    tsui::mdl_download_button(id = 'dl_data',label = '下载测试数据')

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' buttonUI_bottom()
buttonUI_bottom <- function() {
  res <- tagList(

  )
  return(res)

}

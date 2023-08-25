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
#' demoUI()
demoUI <- function(tabTitle ='数据中台功能演示',
                                colTitles =c('操作区域','预览区域','显示区域'),
                                widthRates =c(4,8,12),
                                func_left = demoUI_left,
                                func_right =demoUI_right,
                                func_bottom = demoUI_bottom
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
#' demoUI_left()
demoUI_left <- function() {


  res <- tagList(
    shiny::actionButton(inputId = 'btn_action1',label = '按纽1'),
    shinyWidgets::actionBttn(inputId = 'btn_action2',label = '显示测试数据'),
    tsui::mdl_text2(id = 'txt_demo_title',label = '标题',value = '文本输入')
  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' demoUI_bottom()
demoUI_right <- function() {
  res <- tagList(

    DT::dataTableOutput(outputId = 'dt_preview'),

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' demoUI_bottom()
demoUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'dt_res'))

  )
  return(res)

}

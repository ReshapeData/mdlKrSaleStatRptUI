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
#' textUI()
textUI <- function(tabTitle ='文本框',
                   colTitles =c('一般文本','多行文本','显示区域'),
                   widthRates =c(4,8,12),
                   func_left = textUI_left,
                   func_right =textUI_right,
                   func_bottom = textUI_bottom
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
#' textUI_left()
textUI_left <- function() {


  res <- tagList(
    tsui::mdl_text(id = 'txt_commonOne',label = '一般文本')
  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' textUI_bottom()
textUI_right <- function() {
  res <- tagList(

     tsui::mdl_textArea(id = 'txtArea_demo')

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' textUI_bottom()
textUI_bottom <- function() {
  res <- tagList(


  )
  return(res)

}

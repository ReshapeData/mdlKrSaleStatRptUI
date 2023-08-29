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
#' saleOrderTableUI()
saleOrderTableUI <- function(tabTitle ='查看即时库存更新报表',
                         colTitles =c('操作区域','操作区域','显示区域'),
                         widthRates =c(6,6,12),
                         func_left = saleOrderTableUI_left,
                         func_right =saleOrderTableUI_right,
                         func_bottom = saleOrderTableUI_bottom
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
#' saleOrderTableUI_left()
saleOrderTableUI_left <- function() {
  
  
  res <- tagList(
    tsui::layout_2C(x = tsui::mdl_date(id = 'FStartDate',label = '开始日期'),
                    y=tsui::mdl_date(id = 'FEndDate',label = '结束日期')
    ),
    tsui::layout_2C(x = tsui::mdl_ListChoose1(id ="FIsFree",label =  "是否免费",
                                              choiceNames = list("是","否"),
                                              choiceValues =list("是","否"),selected = list("否")),
                    # y=tsui::mdl_ListChooseN(id = 'FBIllType',label =  "单据类型",
                    #                         choiceNames = list("标准销售订单","样品销售订单"),
                    #                         choiceValues =list("标准销售订单","样品销售订单"),selected = list("标准销售订单") )
                    y=tsui::mdl_text(id ='FBIllType' ,label ='单据类型' ,value ="'标准销售订单','样品销售订单'" )
    
                    
                    ),
    tsui::layout_2C(x=tsui::mdl_ListChooseN(id = 'Fstatus',label =  "单据状态",
                                              choiceNames = list("全部","已审核"),
                                              choiceValues =list("全部","已审核"),selected = list("全部")),
                    y=tsui::mdl_ListChooseN(id = 'FOrgNumber',label =  "组织编码",
                                            choiceNames = list("100","101","102"),
                                            choiceValues =list("100","101","102"),selected = list("102"))
    
                    ),
    
    
  )
  return(res)
  
}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' saleOrderTableUI_bottom()
saleOrderTableUI_right <- function() {
  res <- tagList(
    shinyWidgets::actionBttn(inputId = 'dl_saleOrderTable_query',label = '查询销售订单统计表')
    
    
  )
  return(res)
  
}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' saleOrderTableUI_bottom()
saleOrderTableUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'dt_saleOrderTable_query_dataView',label = '结果显示'))
  )
  return(res)
  
}

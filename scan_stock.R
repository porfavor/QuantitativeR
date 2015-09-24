# TODO: Add comment
# 
# Author: CoffeeBean
###############################################################################


require(WindR)
require(graphics)


#code must be a stock
main<-function()
{
	#w.start(showmenu=FALSE);
	#testrealtime(code)
	#print("stopwsq() to stop...")
	
	setwd("D://Workspace//r")
	stock_list = read.csv("stocks.csv", header=TRUE, sep=",")
	
	for(stock in stock_list$code)
	{
		message("\n\nCode: ", stock)
		stock_info <- w.wsd(stock,"pct_chg",Sys.Date()-10,Sys.Date(),"Fill=Previous")
		print(stock_info)
		print(max(stock_info$Data$PCT_CHG))
	}
	
	#w.wsd("600009.SH","pct_chg","2015-09-21","2015-09-24","Fill=Previous")

	#print(Sys.time());
	#print(class(date()));
	#print(class(Sys.Date()));
}
main();

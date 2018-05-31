local protoc = require("lua-protobuf.protoc")

return function (context_path)
  
  local proto_path = context_path .. "/qlua/rpc"
  
  local p = protoc.new()
  p.include_imports = true

  p.paths[#p.paths+1] = proto_path
  p.paths[#p.paths+1] = context_path
  p.paths[#p.paths+1] = proto_path .. "/bit"
  p.paths[#p.paths+1] = proto_path .. "/datasource"
  
  p:loadfile("RPC.proto")
  --p:loadfile("qlua_structures.proto") -- gets auto-imported by other protos
  p:loadfile("qlua_types.proto")
  p:loadfile("isConnected.proto")
  p:loadfile("getScriptPath.proto")
  p:loadfile("getInfoParam.proto")
  p:loadfile("message.proto")
  p:loadfile("sleep.proto")
  p:loadfile("getWorkingFolder.proto")
  p:loadfile("PrintDbgStr.proto")
  p:loadfile("getItem.proto")
  p:loadfile("getOrderByNumber.proto")
  p:loadfile("getNumberOf.proto")
  p:loadfile("SearchItems.proto")
  p:loadfile("getClassesList.proto")
  p:loadfile("getClassInfo.proto")
  p:loadfile("getClassSecurities.proto")
  p:loadfile("getMoney.proto")
  p:loadfile("getMoneyEx.proto")
  p:loadfile("getDepo.proto")
  p:loadfile("getDepoEx.proto")
  p:loadfile("getFuturesLimit.proto")
  p:loadfile("getFuturesHolding.proto")
  p:loadfile("getSecurityInfo.proto")
  p:loadfile("getTradeDate.proto")
  p:loadfile("getQuoteLevel2.proto")
  p:loadfile("getLinesCount.proto")
  p:loadfile("getNumCandles.proto")
  p:loadfile("getCandlesByIndex.proto")
  p:loadfile("CreateDataSource.proto")
  p:loadfile("SetUpdateCallback.proto")
  p:loadfile("O.proto")
  p:loadfile("H.proto")
  p:loadfile("L.proto")
  p:loadfile("C.proto")
  p:loadfile("V.proto")
  p:loadfile("T.proto")
  p:loadfile("Size.proto")
  p:loadfile("Close.proto")
  p:loadfile("SetEmptyCallback.proto")
  p:loadfile("sendTransaction.proto")
  p:loadfile("CalcBuySell.proto")
  p:loadfile("getParamEx.proto")
  p:loadfile("getParamEx2.proto")
  p:loadfile("getPortfolioInfoEx.proto") 
  --p:loadfile("getPortfolioInfo.proto") -- gets auto-imported by getPortfolioInfoEx.proto
  p:loadfile("getBuySellInfoEx.proto")
  --p:loadfile("getBuySellInfo.proto") -- gets auto-imported by getBuySellInfoEx.proto
  p:loadfile("AddColumn.proto")
  p:loadfile("AllocTable.proto")
  p:loadfile("Clear.proto")
  p:loadfile("CreateWindow.proto")
  p:loadfile("DeleteRow.proto")
  p:loadfile("DestroyTable.proto")
  p:loadfile("InsertRow.proto")
  p:loadfile("IsWindowClosed.proto")
  p:loadfile("GetCell.proto")
  p:loadfile("GetTableSize.proto")
  p:loadfile("GetWindowCaption.proto")
  p:loadfile("GetWindowRect.proto")
  p:loadfile("SetCell.proto")
  p:loadfile("SetWindowCaption.proto")
  p:loadfile("SetWindowPos.proto")
  p:loadfile("SetTableNotificationCallback.proto")
  p:loadfile("RGB.proto")
  p:loadfile("SetColor.proto")
  p:loadfile("Highlight.proto")
  p:loadfile("SetSelectedRow.proto")
  p:loadfile("AddLabel.proto")
  p:loadfile("DelLabel.proto")
  p:loadfile("DelAllLabels.proto")
  p:loadfile("GetLabelParams.proto")
  p:loadfile("SetLabelParams.proto")
  p:loadfile("Subscribe_Level_II_Quotes.proto")
  p:loadfile("Unsubscribe_Level_II_Quotes.proto")
  p:loadfile("IsSubscribed_Level_II_Quotes.proto")
  p:loadfile("ParamRequest.proto")
  p:loadfile("CancelParamRequest.proto")
  p:loadfile("tohex.proto")
  p:loadfile("bnot.proto")
  p:loadfile("band.proto")
  p:loadfile("bor.proto")
  p:loadfile("bxor.proto")
end

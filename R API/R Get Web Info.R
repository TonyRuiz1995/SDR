xmlSpike = function()
{
  library("XML")
  library("methods")
  url = "https://www.sbir.gov/api/awards.xml?keyword=cbinsights"
  
  # Reads into a string
  page = readLines(url)
  
  # Parses into xml
  pageXML=xmlParse(page)
  #print(pageXML)
  
  # Turns it into data frame
  pageFrame = xmlToDataFrame(pageXML)
  xmlCount = length(pageFrame[,1])
  for(item in pageFrame[,1])
    print(item[1])
}

xml = function(keyword)
{
  url = sprintf("https://www.sbir.gov/api/awards.xml?keyword=%s", keyword)
  print(url)
  page = readLines(url)
  pageXML=xmlParse(page)
  
  return (pageXML)
}

xml("cbinsights")

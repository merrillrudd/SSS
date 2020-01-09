##' Run SS function
#' @param path location of the executable
#' @param ss.exe executable name for ss (e.g., "ss")
#' @param ss.cmd command line input used when running SS
#' @param OStype default = "Windows", option "OSX_Linux" to match function SSS (not yet tested on OSX)
#' @author Jason Cope
#' @export

RUN.SS<-function(path, ss.exe="ss",ss.cmd=" -nohess -nox", OStype = "Windows")
{
  navigate <- paste("cd ",path,sep="")
  if(OStype == "Windows"){
  	command <- paste(navigate," & ",ss.exe,ss.cmd,sep="")
  	shell(command,invisible=TRUE,translate=TRUE)
  }
  if(OStype == "OSX_Linux"){
  	command <- paste(navigate," && chmod u+x ", ss.exe, " && ./",ss.exe,ss.cmd,sep="")
  	system(command, invisible=TRUE)
  }
}
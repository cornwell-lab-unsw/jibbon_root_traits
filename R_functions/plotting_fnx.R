plot_soil_moisture<-function(){
  library(ggplot2)
  soil_moisture<-read.csv("data/Soil_Moisture.csv")
  ggplot(soil_moisture,aes(x=Soil.Moisture.Content,y=OM.))+geom_point()+scale_y_log10()+scale_x_log10()+geom_smooth(method="lm")
}
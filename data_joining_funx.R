library(plyr)

air_porosity<-read.csv("data/air_porosity.csv")
cluster_root_weight<-read.csv("data/cluster_root_weight_data.csv")
dry_root_weight<-read.csv("data/dry_root_weight.csv")
root_length_data<-read.csv("data/root_lenght_data.csv")

# trying to get codes for data frames to matches
dry_root_weight$species_fixed<-toupper(dry_root_weight$species_code)
root_length_data$species_fixed<-sub("_altered","",root_length_data$File_Name)


srl_df<-join(dry_root_weight,root_length_data,by="species_fixed",type="full")
srl_df$srl<-srl_df$Kimura_length/1000/srl_df$weight_specific_root_length

hist(srl_df$srl)

write.csv(srl_df,"outputs/srl_data_joined.csv")



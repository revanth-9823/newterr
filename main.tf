provider azurerm {
   features {}
  
  subscription_id = "596edce6-97a9-44ad-acf7-e4848b14c029"
  client_id       = "ebf1239d-b661-4d52-b98c-0392d4976be6"
  client_secret   = "q_l-imSY..P__-krE~m5Tw700G1i~zv-2f"
  tenant_id       = "26fbe7de-7c9b-4775-aab3-59ebabc3763a"
}

module testvnet {
   source = "./modules/vnet"
   rg_name = "newrg"
 rg_location ="eastus"
 Vnet_Name ="vfvg123"
 cidr_vnet =["10.1.0.0/16"]
 vnet_location ="eastus"
 subnet1_name ="errf"
 cidr_subnet1=["10.1.1.0/24"]
 cidr_subnet2 =["10.1.2.0/24"]
 subnet2_name= "rfrwf"
 ntifname ="cwwwwftw"
 ni_location = "eastus"
 ipconfigname = "cwerwfvgw"

}



module testvm {

 source ="./modules/vm" 
 rg_name = "${module.testvnet.rg_name}"
 ntifgname = "${module.testvnet.netif_name}"

}
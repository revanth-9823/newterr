provider azurerm {
   features {}
  
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
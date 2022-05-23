terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.7.0"
    }
  }
  required_version = "<= 4.0.0" ## jak wspominałem w main od wersji 4.0 nie będzie to działać  i pytanie czy taki zapis jest poprawny? Bo gdzieś widziałem zapis jak by odwrotny
                                ## że wymagało wersji nowszej niż X 
}
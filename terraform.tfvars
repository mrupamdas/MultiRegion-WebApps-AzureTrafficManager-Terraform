resource_group_name = "appgrp"
resource_group_location="North Europe"
webapp_environment={
  "uksouthplan1000010"={
        service_plan_os_type="Windows"
        service_plan_sku="S1"
        service_plan_location="UK South"
        web_app_name="webapp80000090"
  },
    "northeuropeplan1000010"={
        service_plan_os_type="Windows"
        service_plan_sku="S1"
        service_plan_location="North Europe"
        web_app_name="webapp90000090"
  }
}

traffic_manager_endpoints={
  "primaryendpoint"={
     priority=1,
    weight=100
  }
  "secondaryendpoint"={
    priority=2,
    weight=100
  }
}

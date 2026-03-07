Simplified Hub-and-Spoke Bicep
param location string = 'westeurope'
param locationSpoke03 string = 'northeurope'

var hubVnetName = 'hub-lab-net'
var spoke01Name = 'spoke-01'
var spoke02Name = 'spoke-02'
var spoke03Name = 'spoke-03'

/* HUB SUBNETS */
var hubSubnets = [
  {
    name: 'DefaultSubnet'
    properties: {
      addressPrefix: '10.12.1.0/24'
    }
  }
]

/* HUB VNET */
resource hubVnet 'Microsoft.Network/virtualNetworks@2023-05-01' = {
  name: hubVnetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.12.0.0/16'
      ]
    }
    subnets: hubSubnets
  }
}

/* SPOKE 01 */
resource spoke01Vnet 'Microsoft.Network/virtualNetworks@2023-05-01' = {
  name: spoke01Name
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.13.1.0/24'
      ]
    }
    subnets: [
      {
        name: 'default'
        properties: {
          addressPrefix: '10.13.1.0/26'
        }
      }
    ]
  }
}

/* SPOKE 02 */
resource spoke02Vnet 'Microsoft.Network/virtualNetworks@2023-05-01' = {
  name: spoke02Name
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.13.2.0/24'
      ]
    }
    subnets: [
      {
        name: 'default'
        properties: {
          addressPrefix: '10.13.2.0/26'
        }
      }
    ]
  }
}

/* SPOKE 03 */
resource spoke03Vnet 'Microsoft.Network/virtualNetworks@2023-05-01' = {
  name: spoke03Name
  location: locationSpoke03
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.13.3.0/24'
      ]
    }
    subnets: [
      {
        name: 'default'
        properties: {
          addressPrefix: '10.13.3.0/26'
        }
      }
    ]
  }
}


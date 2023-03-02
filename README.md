# _ PU4RON RONUALDO _


# pYSF3 C4FM multi streams DG-ID
Script cuja a função é adicionar, ativar e fazer controle de DG-ID(s) de refletores pYSF3 multi streams usando rádios DMR via PI-STAR; Todas as ações são validadas por meio de TGs pré-configurados ou ssh. 


# Install

* rpi-rw
* sudo git clone https://github.com/pu4ron/dg-id.git
* cd dg-id
* sudo chmod 777 install.sh
* sudo chmod +x install.sh
* sudo ./install.sh

# Uso

*  [ TG + DG-ID ] slot 2

*  TG 7777700  = Off/retorno
*  TG 7777701  = DG-ID 01
*  TG 7777702  = DG-ID 02
*  TG 7777750  = DG-ID 50
*  TG 7777788  = DG-ID 88

[ SSH ]

* sudo dg-id 0  = Off/retorno
* sudo dg-id 1  = DG-ID 01
* sudo dg-id 2  = DG-ID 02
* sudo dg-id 30 = DG-ID 30
* sudo dg-id 88 = DG-ID 88


# ____________________________________________
*  Uma portadora (PTT) de 2s para selecionar o dg-id em seguida retornar ao id do refletor para QSO.
*  Obs: DMRGateway [ 70 + 77777 + dg-id ]


# @see https://www.planosdesaudetodosaqui.com.br/
health_plans = [
  'ALLIANZ SAÚDE',
  'AMEPLAN SAÚDE',
  'AMIL SAÚDE',
  'BIOSAÚDE',
  'BIOVIDA SAÚDE',
  'BLUE MED SAÚDE',
  'BRADESCO SAÚDE',
  'CLASSES LABORIOSAS',
  'CRUZ AZUL SAÚDE',
  'GS SAÚDE',
  'GOLDEN CROSS',
  'HEALTH SANTARIS',
  'INTERCLINICAS SAÚDE',
  'MED TOUR SAÚDE',
  'NOTRE DAME INTERMÉDICA',
  'PLENA SAÚDE',
  'PORTO SEGURO SAÚDE',
  'PREVENT SENIOR',
  'QSAÚDE',
  'SANTA HELENA SAÚDE',
  'SÃO CRISTÓVÃO SAÚDE',
  'SÃO MIGUEL SAÚDE',
  'SEGUROS UNIMED',
  'SOMPO SAÚDE',
  'SUL AMÉRICA SAÚDE',
  'TOTAL MEDCARE SAÚDE',
  'TRASMONTANO SAÚDE',
  'UNIHOSP SAÚDE',
  'UNIMED'
]

health_plans.each do |plan|
  HealthPlan.create({ name: plan })
end

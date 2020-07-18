FactoryBot.define do
  factory :power_generator do
    trait :FRONIUS do
      name            { 'FRONIUS METALICA' }
      description     { 'Potência nominal máx. (Pmáx) 335W
                        Tensão operacional ideal (Vmp) 38,10V
                        Corrente operacional ideal (Imp) 8,79A 
                        Tensão de circuito aberto (Voc) 45,44 V
                        Corrente de curto circuito 9,25A 
                        Eficiência do módulo 17% 
                        Temperatura operacional -40 °C ~ +85°C
                        Tensão máxima do sistema 1.500V 
                        Classificação máxima de fusíveis da série 15 A' }
      image_url       { 'https://marketplace-img-production.s3.amazonaws.com/products/105434/large/20190806-1-1dlw3m7.?1565111320' }
      manufacturer    { 'BYD' }
      price           { 86176.70 }
      kwp             { 30.15 } 
      height          { 1.7 }
      width           { 0.2 }
      lenght          { 2.2 }
      weight          { 155 }
      structure_type  { 0 }
    end
    
    trait :FRIFAZICO do
      name            { 'TRIFÁSICO 380V' }
      description     { '3 MPPTs para adaptação versáteis a diferentes tipos ou quantidades de módulos construídos com diferentes alinhamentos    
                          Monitoramento inteligente de 6 strings e 80% de economia de tempo na detecção de falhas    
                          Portas RS485 e USB para conectividade e gerenciamento de dados    
                          Display LCD gráfico local e monitoramento remoto' }
      image_url       { 'https://marketplace-img-production.s3.amazonaws.com/products/13384/large/Kit-Gerador-de-Energia-Solar-WEG---SIW500H---ST013-18-22.jpg?1546436139' }
      manufacturer    { 'WEG' } 
      price           { 52990.00 }
      kwp             { 23.14 }
      height          { 2 }
      width           { 0.15 }
      lenght          { 1.8 }
      weight          { 218 }
      structure_type  { 0 }
    end
  end
end

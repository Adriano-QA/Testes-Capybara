describe 'Dropdown List', :dropdown do


    #apenas para elementos que possuem ID => nesse caso 'dropdown'
    it 'Item especifico simples' do

      visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
      select('Loki', from: 'dropdown')
      sleep 3 
    end
    
    #selecionar um item através da class do elemento => nesse caso 'avenger-list'
    it 'Item especifico find' do
      
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list')
        drop.find('option', text:'Scott Lang').select_option
        sleep 3
    end

    #selecionar qualquer item da lista com o SAMPLE
    it 'Qualquer item', :sample do
            
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
        sleep 3
    end
    
    

end

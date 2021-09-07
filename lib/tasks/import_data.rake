namespace :import do
  desc 'Import periodic table data from json'
  task :data, [:file] => :environment do |t, args|
    puts 'rails import:data[file_path] required' && return unless args[:file]
    puts "Importing file #{args[:file]}"
    
    # TODO: Escreva o código para importar os dados aqui
    data = JSON.parse(File.read(args[:file]))
    data["order"].each do |element|
      element_params = data[element].to_h
                                  .symbolize_keys
                                  .slice( :name, :atomic_mass, :number,
                                  :period, :category, :symbol,
                                  :xpos, :ypos, :shells )
      element_params[:shells] = element_params[:shells].to_s
      Element.create!(element_params)
    end
    puts "#{args[:file]} was imported sucessfully!"
  end
end

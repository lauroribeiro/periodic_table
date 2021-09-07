namespace :import do
  desc 'Import periodic table data from json'
  task :data, [:file] => :environment do |t, args|
    puts 'rails import:data[file_path] required' && return unless args[:file]
    puts "Importing file #{args[:file]}"
    
    # TODO: Escreva o código para importar os dados aqui
    data = JSON.parse(File.read(args[:file]))
    data["order"].each do |element|
      table_params = data[element].to_h
                                  .symbolize_keys
                                  .slice( :name, :atomic_mass, :number,
                                  :period, :category, :symbol,
                                  :xpos, :ypos, :shells )
      # :atomic_mass e :shells estão como strings no banco de dados
      table_params[:atomic_mass] = table_params[:atomic_mass].to_s
      table_params[:shells] = table_params[:shells].to_s
      Table.create!(table_params)
    end
  end
end

namespace :import do
  desc 'Import periodic table data from json'
  task :data, [:file] => :environment do |t, args|
    puts 'rails import:data[file_path] required' && return unless args[:file]
    puts "Importing file #{args[:file]}"
    
    data = JSON.parse(File.read(args[:file]))
    data["order"].each do |element|
      element_params = data[element].to_h.symbolize_keys
                                  
      element_params[:shells] = element_params[:shells].to_s
      element_params[:ionization_energies] = element_params[:ionization_energies].to_s
      Element.create!(element_params)
    end
    puts "#{args[:file]} was imported sucessfully!"
  end
end

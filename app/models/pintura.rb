class Pintura < ApplicationRecord
    
    validates :materia_1, :materia2, :materia3, presence: {message: "Los campos son obligatorios"}
    validates_uniqueness_of :id


    validate :color_valid?

    

    private
    def color_valid?
        if MateriaPrima.exists?(color: materia_1) == false
            errors.add(materia_1, "no existe como materia prima")
        elsif  MateriaPrima.exists?(color: materia2) == false
            errors.add(materia2, "no existe como materia prima")
        elsif MateriaPrima.exists?(color: materia3) == false
            errors.add(materia3, "no existe como materia prima")
        end
    end
end

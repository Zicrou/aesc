class Etudiant < ApplicationRecord
    belongs_to :genre
    belongs_to :carteconsulaire
    belongs_to :boursier
    belongs_to :typebourse
end

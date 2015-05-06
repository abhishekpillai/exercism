class Complement
  DNA2RNA_MAPPING = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
  }

  RNA2DNA_MAPPING = DNA2RNA_MAPPING.invert

  def self.of_dna(dna)
    complement_this(dna, :dna)
  end

  def self.of_rna(rna)
    complement_this(rna, :rna)
  end


  private

  def self.complement_this(strand, type)
    mapping = type == :dna ? DNA2RNA_MAPPING : RNA2DNA_MAPPING
    complement = ""
    strand.each_char do |char|
      val = mapping[char]
      raise ArgumentError unless val
      complement << val
    end
    complement
  end
end

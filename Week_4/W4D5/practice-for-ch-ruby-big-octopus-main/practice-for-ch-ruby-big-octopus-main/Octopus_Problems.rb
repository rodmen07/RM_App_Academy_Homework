fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(fish_arr)
    longest_fish = ""
    fish_arr.each do |fish_1|
        fish_arr.each do |fish_2|
            longest_fish = fish_1 if fish_1.length > fish_2.length && fish_1.length > longest_fish.length
            longest_fish = fish_2 if fish_1.length < fish_2.length && fish_2.length > longest_fish.length
        end
    end
    longest_fish
end

def dominant_octopus(fish_arr)
    return fish_arr if fish_arr.length <= 1

    mid_idx = fish_arr.length / 2
    merge(
        dominant_octopus(fish_arr.take(mid_idx)),
        dominant_octopus(fish_arr.drop(mid_idx)),
    )
end

def merge(left, right)
    merged_array = []
    until left.empty? || right.empty?
        case left.first.length <=> right.first.length
        when -1
        merged_array << left.shift
        when 0
        merged_array << left.shift
        when 1
        merged_array << right.shift
        end
    end

    merged_array + left + right
end

def clever_octopus(fish_arr)
    longest_fish = ''
    fish_arr.each { |fish| longest_fish = fish if fish.length > longest_fish.length }
    longest_fish
end

p sluggish_octopus(fishes)
p dominant_octopus(fishes)[-1]
p clever_octopus(fishes)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up"]
new_tiles_data_structure = {
    "up" => 0,
    "right-up" => 1,
    "right" => 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def slow_dance(direction, tiles_array)
    tiles_array.each_with_index do |tile, i|
        return i if tile == direction
    end
    nil
end

def fast_dance(direction, new_tiles_data_structure)
    return new_tiles_data_structure[direction]
end

p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)
p fast_dance("up", new_tiles_data_structure)
p fast_dance("right-down", new_tiles_data_structure)

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# the array buffer will be mutated by the method if the '<<' is used
# to modify the buffer. The return will be a mutated array. The '+' will
# not mutate the array called buffer when the method is called. 

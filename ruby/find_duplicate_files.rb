# 42 interview cake

def find_duplicate_files_iterative(starting_directory)
  files_seen_already = {}
  stack = [starting_directory]

  duplicates = []

  while stack.length > 0

      current_path = stack.pop()

      # if it's a directory,
      # put the contents in our stack
      if File::directory? current_path
          Dir.foreach(current_path) do |path|
              next if path == '.' || path == '..'
              full_path = File.join(current_path, path)
              stack.push(full_path)
          end

      # if it's a file
      else

          # get its contents
          file_contents = ''
          File.open(current_path, 'r') do |file|
              file_contents = File.read(file)
          end

          # get its last edited time
          current_last_edited_time = File::mtime(current_path)

          # if we've seen it before
          if files_seen_already.include? file_contents

              existing_last_edited_time, existing_path = files_seen_already[file_contents]

              if current_last_edited_time > existing_last_edited_time

                  # current file is the dupe!
                  duplicates.push([current_path, existing_path])

              else

                  # old file is the dupe!
                  duplicates.push([existing_path, current_path])

                  # but also update files_seen_already to have the new file's info
                  files_seen_already[file_contents] = \
                      [current_last_edited_time, current_path]
              end

          # if it's a new file, throw it in files_seen_already
          # and record the path and the last edited time,
          # so we can delete it later if it's a dupe
          else
              files_seen_already[file_contents] = \
                  [current_last_edited_time, current_path]
          end
      end
  end

  return duplicates
end

# utility-scripts
This repository is intended for storing various scripts that simplify development tasks. Currently, it contains a single script that adds `# frozen_string_literal: true` to Ruby files that are missing it.

## ruby_frozen_literal.sh
The purpose of this script is to add the missing `# frozen_string_literal: true` headers to Ruby files. It can work with both individual files and directories, recursively adding the header wherever it is missing.

## Usage example:

- `./ruby_frozen_literal.sh app/controllers/application_controller.rb` – adds the header only to `application_controller.rb`.

- `./ruby_frozen_literal.sh app/controllers` – recursively adds the header to each controller in the `app/controllers` directory, if it's missing.

## What is the effect of `# frozen_string_literal: true`?

### Default behavior:

By default, strings in Ruby are mutable. You can modify their content:

```ruby
example = "Lorem"
puts example.object_id  # => ID of "Lorem"

example << " Ipsum"  # Modifying the string
puts example         # => "Lorem Ipsum"
puts example.object_id  # => Same object ID
```

### With `# frozen_string_literal: true`
When this comment is added at the beginning of the file, all string literals become immutable, preventing any modifications to them.
```ruby
# frozen_string_literal: true

example = "Lorem"
puts example.object_id  # => ID of "Lorem"

example << " Ipsum"  # Raises an error
```

Error:
```ruby
can't modify frozen String: "Lorem" (FrozenError)
```

## How does it improve performance and code quality?

### Performance optimization and Memory efficiency: Immutable strings improve performance and save memory by reducing object duplication
Without this header, Ruby creates a new string object each time you modify a string, which involves additional memory allocation and copying data. By freezing the string literals, Ruby reuses the same object for all references to that string, reducing memory usage, minimizing the overhead of object creation, and improving execution speed, especially in large applications with many string operations.

### Code consistency and Best Practices
Enforcing string immutability across the file reduces bugs related to inadvertent modifications and promotes a consistent coding style, thereby encouraging the adoption of immutable data structures that make the code more reliable and maintainable.

### Thread Safety
Immutable strings are inherently thread-safe, as they can be shared between threads without synchronization, reducing the risk of race conditions and simplifying concurrent programming.

## License

This project is open-source and available under the [MIT License](LICENSE).

Feel free to fork, contribute, or use this code as needed. If you find any issues or have suggestions for improvements, please create an issue or submit a pull request.

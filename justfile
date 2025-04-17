count-task-names:
    grep -Ri -- '- name: ' . | cut -d ':' -f 3 | grep -v cut | sort | uniq -c

# Run ansible-lint on the collection.
lint:
    ansible-lint

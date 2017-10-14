# obj <- c
.PRECIOUS: $(OBJ)/%.o
$(OBJ)/%.o: $(SRC)/%.c
	@mkdir -p $(OBJ)
	$(CC) -c $(CFLAGS) $(CPPFLAGS) $^ -o $@

# obj <- cpp
$(OBJ)/%.o: $(SRC)/%.cpp
	@mkdir -p $(OBJ)
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) $^ -o $@
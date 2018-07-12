get_latest_warrior_data_file_names <- function(from_directory='~/Downloads/') {
  # Gets the latest downloaded files (in terms of date) from the provided
  # from_directory, as well as the date reflected in the filenames.
  # If no arguments are provided, the directory is assumed to be the '~/Downloads/' folder.
  #
  # Args:
  #   from_directory = a directory where to find the latest data,
  # Returns:
  #   a list containing of key-value pairs
  #     returned_list[['data']] to get the data file name,
  #     returned_list[['metadata']] to get the metadata file name and
  #     returned_list[['date']] to get the date associated with the data.
  patterns <- c("data" = "WARRIOR_DATA_20\\d\\d.*\\.csv",
                "metadata" = "WARRIOR_DataDictionary_20\\d\\d.*\\.csv",
                "date" = "\\d{4}-\\d{2}-\\d{2}")
  return(rdatil::get_latest_data_file_names(from_directory, patterns))
}

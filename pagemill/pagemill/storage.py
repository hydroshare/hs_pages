from storages.backends.gcloud import GoogleCloudStorage
import filebrowser_safe.storage

# Monkey patch the filebrowser-safe storage backend to use the Google Storage backend
# https://github.com/stephenmcd/filebrowser-safe/issues/128
filebrowser_safe.storage.GoogleCloudStorageMixin = filebrowser_safe.storage.GoogleStorageMixin


class FileBrowserGoogleCloudStorage(GoogleCloudStorage, filebrowser_safe.storage.GoogleCloudStorageMixin):
    # isdir() is not implemented in GoogleCloudStorage
    # the following implementation is from filebrowser_safe.storage
    # https://github.com/stephenmcd/filebrowser-safe/blob/v1.1.1/filebrowser_safe/storage.py#L131-L147
    # however, _encode_name() is not implemented in GoogleCloudStorage

    # def isdir(self, name):
    #     # That's some inefficient implementation...
    #     # If there are some files having 'name' as their prefix, then
    #     # the name is considered to be a directory
    #     if not name:  # Empty name is a directory
    #         return True

    #     if self.isfile(name):
    #         return False

    #     name = self._normalize_name(self._clean_name(name))
    #     dirlist = self.listdir(self._encode_name(name))

    #     # Check whether the iterator is empty
    #     for item in dirlist:
    #         return True
    #     return False

    def _encode_name(self, name):
        return name

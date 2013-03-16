## Example of using python-dulwich
```python
r = Repo('git_test')
s = Snapshot(r)
root = s.root()
dir1 = root.add_treenode('dir1')
blob = dir1.add_blobnode('file1', 'content)
blob.save()

dir2 = dir1.add_treenode('dir2')
blob = dir2.add_blobnode('file2', 'super content')
blob.save()

dir2.save()
dir1.save()
root.save()
s.commit('testuser', message='New commit')
```
